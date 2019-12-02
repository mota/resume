# -*- coding: utf-8 -*-

from jinja2 import Template
from argparse import ArgumentParser
import yaml


def main():
    parser = ArgumentParser()
    parser.add_argument('content')
    parser.add_argument('template')
    args = parser.parse_args()

    with open(args.content) as content_handle:
        content = yaml.load(content_handle, Loader=yaml.FullLoader)
        with open(args.template) as template_handle:
            template = Template(template_handle.read())
            print(template.render(**content))

if __name__ == "__main__":
    main()
