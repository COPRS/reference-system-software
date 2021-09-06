# ImportWord
This repository is an example to import word documentation and convert it into GitHub Flavord Mardown. The output (markdown file(s) and images) will be zipped, named documentation, stored as an artifact of the word2gfm action. The output documentation.zip arborescence will be like the following:
<folder_name>/doc1.docx.md  
<folder_name>/doc2.docx.md  
<folder_name>/media/

The media folder contains the images and thus must be upload with the markdown files under the same path.

# Example
To convert your docx file to markdown, put your file in a folder inside the input folder and commit with the message "convert". For e.g. :  
/input/S1PRO/my_file.docx  
/input/S1PRO/my_other_file.docx

## Step 1
Click on "Upload files":  
![image](https://user-images.githubusercontent.com/86782407/131990495-94bfe918-0459-4d4d-9771-e021dda33135.png)  

## Step 2
* Drag and drop your folder input/<your_folder_name>/ containing the word files to convertfor, for e.g. my files are in input/S1PRO/
* Write convert in the commit message
* Click on "Commit changes"  
![image](https://user-images.githubusercontent.com/86782407/131990691-9738a324-c36e-449a-9e42-28b579649903.png)

## Step 3
Then go to the word2gfm Action page, and click on the workflow of your commit: https://github.com/SANDBOX-COPRS/ImportWord/actions/workflows/word2gfm.yml  
![image](https://user-images.githubusercontent.com/86782407/131991643-d066d423-a252-4ec6-826a-4808d42529f6.png)

## Step 4
Scroll down and click on the artifact named "documentation":  
![image](https://user-images.githubusercontent.com/86782407/131991908-006cc5a4-0f28-444f-9c4d-2ba26f0b574d.png)

## Step 5
Last but not least, please let the repository clean like you found it. Delete the input folder after every run. Naviguate to your files and click the ![image](https://user-images.githubusercontent.com/86782407/131993332-df98c24e-2d47-46ed-b652-e6ec283c32d1.png) symbol and click "Delete directory":  
![image](https://user-images.githubusercontent.com/86782407/131993177-acd59881-10a7-4f6e-b823-dcd4cef55097.png)

And confirm by clicking on "Commit changes":  
![image](https://user-images.githubusercontent.com/86782407/131993557-81a54aaa-7715-4767-b7ec-d4bfbf96aaf0.png)
