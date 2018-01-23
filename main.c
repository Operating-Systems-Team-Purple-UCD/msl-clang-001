#include <stdio.h>
#include <stdlib.h>

/* each leaf of the tree */
struct Node {
	/* largest string size */
	char* data;
	int count;
	struct Node* left;
	struct Node* right;
};


int main(int argc, char **argv) {
	/* create file object*/
	FILE *fp;
	/* check if file path was given */
	if(argv[1] == NULL){
		printf("Sorry, you failed to give a file path. Please try again.\n");
	}
	else{
		/* open file for read only access */
	   if(fp = fopen(argv[1], "r")){
	   		/* file was found, we can read in and sort */
	   		/* max buffer size */
	   		char buff[30];
	 		/* create parent tree object */
	   		struct Node* par = (struct Node*)malloc(sizeof(struct Node));
	   		par->left = NULL;
	   		par->right = NULL;
	   		/* loop through getting words one at a time and add to tree */
	   		while(fscanf(fp, "%s", *buff) != EOF){
				/* if parent empty */
				if(par->left == NULL && par->right == NULL){
					int size = sizeof(buff);
					par->data = (char*) malloc(buff);
					par->count = 1;
				}
			}



	   		/* close file */
	   		fclose(fp);
	   }
	   /* file does not exist */
	   else{
	   	printf("Sorry, the filename you provided was not found. Please try again.\n");
	   }
	}

    exit(0);
}
