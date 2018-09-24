#! /usr/bin/env python

import os

def main():
    dir_list = os.listdir('.')
    for full_file_name in dir_list:
        base_name, extension = os.path.splitext(full_file_name)
        if extension == '.png': # then .pdf file --> convert to image!
            cmd_str = ' '.join(['convert',
                                '-density 300',
                                '-quality 100',
                                full_file_name,
                                base_name + '.pdf'])
            print(cmd_str)  # echo command to terminal
            os.system(cmd_str)  # execute command

if __name__ == '__main__':
    main()


