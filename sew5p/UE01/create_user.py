'''
@Author: Nik Sauer 
'''
import argparse
import random
import string
import sys
import unicodedata
from typing import Generator, Tuple

import openpyxl
from openpyxl import load_workbook
import logging
import logging.handlers

import unidecode
import re

logger = logging.getLogger(__name__)
handler = logging.handlers.RotatingFileHandler("create_user.log", maxBytes=10000, backupCount=5)
formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)

stream_handler = logging.StreamHandler(sys.stdout)
stream_handler.setFormatter(formatter)

logger.addHandler(handler)
logger.addHandler(stream_handler)

verbose = False
quiet = False

existing_user = []





def main():
    global verbose, quiet

    parser = argparse.ArgumentParser()
    parser.add_argument("filename", type=str, help="filename")

    loglevel = parser.add_mutually_exclusive_group()
    loglevel.add_argument("-v", "--verbose", action="store_true", help="activates verbose mode")
    loglevel.add_argument("-q", "--quiet", action="store_true", help="activates quite mode")

    args = parser.parse_args()

    print(args.filename)

    path = args.filename
    verbose = args.verbose
    quiet = args.quiet

    configure_logging()

    try:
        create_files(path)
    except FileNotFoundError:
        logger.error("File not found")

if __name__ == "__main__":
    main()















