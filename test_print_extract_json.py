import os
import glob
import json
import csv

class FindID :
    def __init__(self,path):
        self.path = path        # path of /data folder
        self.json_list = []     # list for .json files of /data folder
        self.file_dic = {}      # file of folder
        self.output_dic = {}    # dictionary key-> .json file name & value-> each ID

        self.add_files(path)    # file_dic creating
        self.creat_output()     # function for output print

    def my_list(self, file_path):
        # This will return the file list of /data folder.
        # print every files using glob func.
        file_list = glob.glob(file_path + "/*")
        return file_list

    def check_json(self, file_name):
        self.json_list.extend(self.file_dic[file_name])

    def add_files(self,file_path):
        self.file_dic[file_path] = self.my_list(file_path)
        self.check_json(file_path)

    def creat_output(self):
        for filename in self.json_list:
            with open(filename, 'r') as file:
                json_data = json.load(file)
            self.output_dic[filename] = json_data['itemid']

if __name__ == "__main__":
    folder_name = input("input folder address: ")

    folder = FindID(folder_name)

    with open('output.csv', 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)

        writer.writerow(['Path', 'itemid', 'kpthesaurus'])
        for key, val in folder.output_dic.items():
            writer.writerow([key, key.split("/")[-1][:-8],val])