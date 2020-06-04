<!DOCTYPE html>
<html>
    <head>
        <link href="favicon.ico" rel="icon" type="image/ico" />
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8" />
        <title>{{ page_title }}</title>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div id="name">
                    <a href="{{ url }}">{{ name }}</a>
                    <p class="description">
                        {{ description }}
                    </p>
                </div>
                <div id="info">
                    <ul>
                        {% for name, link in links.items() %}
                        {% if link.visibility == 'print' %}
                        <li class="printable">
                        {% elif link.visibility == 'screen' %}
                        <li class="screenable">
                        {% else %}
                        <li>
                        {% endif %}
                        {% if link.type == 'email' %}
                            <i class="icon-envelope-alt"></i>
                            <a href="mailto:{{ name }}">{{ name }}</a>
                        {% elif link.type == 'phone' %}
                            <i class="icon-phone"></i>
                            {{ name }}
                        {% else %}
                            <i class="{{ link.icon  }}"></i>
                            <a href="{{ link.target }}">{{ name }}</a>
                        {% endif %}
                        </li>
                        {% endfor %}
                    </ul>
                </div>
            </div>
            <div id="content">
                <div class="section">
                    <h3>Experience</h3>
                    <table>
                        {% for job in experience %}
                        <tr>
                            <td class="dates">
                                {{ job.start_date }}
                                <i class="icon-circle-arrow-right"></i>
                                {{ job.end_date }}
                            </td>
                            <td class="what">
                                <h3>{{ job.what }}, {{ job.who }}, {{ job.where }}</h3>
                                <div class="job-skills">{{ job.skills | join(', ') }}</div>
                                <ul class="description">
                                    {% for duty in job.duties %}
                                    <li>
                                        {{ duty }}
                                    </li>
                                    {% endfor %}
                                </ul>
                            </td>
                        </tr>
                        {% endfor %}
                    </table>
                </div>
                <div class="section">
                    <h3>Skills</h3>
                    <table>
                        {% for level, items in skills.items() %}
                        <tr>
                            <td class="context">
                                <h4>
                                    {{ level }}
                                </h4>
                            </td>
                            <td class="what">
                                {{ items | join(', ') }}
                            </td>
                        </tr>
                        {% endfor %}
                    </table>
                </div>
                <div class="section" style="page-break-before: always;" />
                    <h3>Education</h3>
                    <table>
                        {% for school in education %}
                        <tr>
                            <td class="dates">
                                {{ school.start_date }}
                                <i class="icon-circle-arrow-right"></i>
                                {{ school.end_date }}
                            </td>
                            <td class="what">
                                <h3>{{ school.school }}</h3>
                                <ul class="description">
                                    {% for skill in school.skills %}
                                    <li>
                                        {{ skill }}
                                    </li>
                                    {% endfor %}
                                </ul>
                                </p>
                            </td>
                        </tr>
                        {% endfor %}
                    </table>
                </div>
                <div class="section">
                    <h3>Languages</h3>
                    <table>
                        {% for language, proficiency in languages.items() %}
                        <tr>
                            <td class="context">
                                <strong>{{language}}</strong>
                            </td>
                            <td class="what">
                                 {{proficiency }}
                            </td>
                        </tr>
                        {% endfor %}
                    </table>
                </div>
                <div class="section">
                    <h3>Honors and Activities</h3>
                    <table>
                        <tr>
                            <td class="context">
                                &nbsp;
                            </td>
                            <td>
                                <ul class="awards">
                                    {% for activity in activities %}
                                    <li>
                                        {{ activity }}
                                    </li>
                                    {% endfor %}
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="display: none;">
                    -----------------------------BEGIN GEEK CODE BLOCK-----------------------------
                    GCS/IT d-@ s+: a- C++++ UBL+++$ P+ L++$ E W+++ N+ o? K+ w O- M+ V? PS+ PE- Y?
                    PGP+ t+ 5 X+ R tv- b++ DI? D+ G++ e+++ h-- r++ y++
                    ------------------------------END GEEK CODE BLOCK------------------------------
                </div>
            </div>
        </div>
    </body>
</html>
