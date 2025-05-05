# ks_parser.py
# Parses .ks files, extracts voice tags, associated dialogue, and meta tags.

def parse_ks_file(filepath):
    '''
    Extracts lines with [vo_xxx s="..."] and returns:
    - filename
    - character (from macro or voice file prefix)
    - meta tags
    - dialogue line
    '''
    # TODO: Implement regex parsing for vo tags and meta attributes
    pass