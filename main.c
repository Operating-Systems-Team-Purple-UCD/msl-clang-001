#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* each leaf of the tree */
struct Node
{
	/* largest string size */
	char* data;
	int count;
	struct Node* left;
	struct Node* right;
};

/* frees a node from the tree */
void freeNode(struct Node* par)
{
    if( par != NULL )
    {
        freeNode(par->left);
        freeNode(par->right);
        /* we allocated data for the string */
        free(par->data);
        /* each node had allocated memory */
        free(par);
    }
}

/* frees binary tree memory */
void free_tree(struct Node* par)
{
    if (par != NULL)
        freeNode(par);
}

/* adds a node to our binary tree */
struct Node* add_node(char* key, int size, struct Node* par)
{
    /* if Node is null */
    if(par == NULL)
    {
        struct Node* temp = (struct Node*)malloc(sizeof(struct Node));
        temp->data = NULL;
        temp->data = (char*)malloc(size * sizeof(char));
        for(int i = 0; i < size; i++)
        {
            temp->data[i] = key[i];
        }
        temp->count = 1;
        temp->left = temp->right = NULL;
        par = temp;
        return par;
    }
    /* traverse left */
    if(strcmp(key, par->data) < 0)
    {
        par->left = add_node(key, size, par->left);
    }
    /* traverse right */
    else if(strcmp(key, par->data) > 0)
    {
        par->right = add_node(key, size, par->right);
    }
    else
    {
        /* equal */
        par->count = par->count + 1;
    }
    return par;
}

/* can print in alphabetic order to file */
void print_tree(struct Node* par)
{
    /* in order traversal */
    if(par != NULL)
    {
        print_tree(par->left);
        printf("%s\n", par->data);
        print_tree(par->right);
    }
}
/*prints tree to file */
void print_tree_to_file(struct Node* par, FILE* file_name)
{
    if(par != NULL)
    {
        print_tree_to_file(par->left, file_name);
        fprintf(file_name, "%s : %i\n", par->data, par->count);
        print_tree_to_file(par->right, file_name);
    }
}
/* creates an output file name */
char* create_file_name(char str[])
{
    int count = 0;
    while (1)
    {
        if(str[count] <= 57 && str[count] >= 48)
        {
            /* found the start of the numbering */
            break;
        }
        else if(str[count] == 46)
        {
            /* found . */
            break;
        }
        count++;
    }
    /* found dot, create file named outputpointer.txt */
    if(str[count] == 46)
    {
        char* not_found = (char*)malloc(18 * sizeof(char));
        not_found[0] = 'o';not_found[1] = 'u';not_found[2] = 't';not_found[3] = 'p';not_found[4] = 'u';not_found[5] = 't';not_found[6] = 'p';
        not_found[7] = 'o';not_found[8] = 'i';not_found[9] = 'n';not_found[10] = 't';not_found[11] = '.';not_found[12] = 't';not_found[13] = 'x';
        not_found[14] = 't';not_found[15] = '\0';
        return not_found;
    }
    int final_counter = 5;
    /* first allocate array with output */
    char* found = (char*)malloc((final_counter + 40) * sizeof(char));
    found[0] = 'o'; found[1] = 'u'; found[2] = 't'; found[3] = 'p'; found[4] = 'u'; found[5] = 't';
    /* get the whole number */
    while(str[count] != 46)
    {
        final_counter++;
        found = realloc(found, final_counter * sizeof(char));
        found[final_counter] = str[count];
        count++;
    }
    found = realloc(found, (final_counter + 40) * sizeof(char));
    found[final_counter+1] = '.'; found[final_counter + 2] = 't'; found[final_counter + 3] = 'x'; found[final_counter + 4] = 't'; found[final_counter + 5] = '\0';
    return found;
}

int main(int argc, char **argv)
{
    /* create file object*/
    FILE *fp;
    /* check if file path was given */
    if(argv[1] == NULL)
    {
        printf("Sorry, you failed to give a file path. Please try again.\n");
        return(-1);
    }
    /* file path was given */
    else
    {
        /* open file for read only access */
        if(fp = fopen(argv[1], "r"))
        {
            /* temp char */
            char temp;
            /* temp counter for malloc */
            int m_counter = 1;
            /* temp counter for indexing */
            int i_counter = 0;
            /* create temporary string */
            char *temp_str;
            /* bool to see if parent has been created */
            int found_parent = 0;
            temp_str = (char * )malloc(sizeof(char));
            /* create parent node for tree */
            struct Node* par_node = NULL;
            /* read through file one char at a time, stopping at EOF */
            /* read through first item */
            do
            {
                /* get next character */
                temp = fgetc(fp);
                /* we only care about the characters that are letters */
                if((temp >= 65 && temp <= 90) || (temp >= 97 && temp <= 122))
                {
                    /* add to temp string array */
                    temp_str = realloc(temp_str, m_counter * sizeof(char));
                    temp_str[i_counter] = temp;
                    /* increment counter */
                    m_counter = m_counter + 1;
                    i_counter = i_counter + 1;
                }
                /* end of word */
                else
                {
                    /* check if word */
                    if(m_counter != 1)
                    {
                        /* null terminate string */
                        temp_str[i_counter] = '\0';
                        /* we know this is a word */
                        if(found_parent == 0)
                        {
                            par_node = add_node(temp_str, i_counter + 1, par_node);
                            found_parent = 1;
                        }
                        else
                        {
                            add_node(temp_str, i_counter + 1, par_node);
                        }
                    }
                    /* reset counter */
                    m_counter = 1;
                    i_counter = 0;
                    /* reset temp_str */
                    free(temp_str);
                    temp_str = NULL;
                    temp_str = realloc(temp_str, sizeof(char));
                }
                /* check if end of file */
                if(feof(fp))
                {
                    /* free created memory */
                    free(temp_str);
                    temp_str = NULL;
                    print_tree(par_node);
                    break;
                }
            } while(1);
            /* close file */
            fclose(fp);
            /* create output file name */
            char* file_name = create_file_name(argv[1]);
            printf("Using file_name: %s\n", file_name);
            /* reuse file to open output file */
            fp = fopen(file_name, "w");
            print_tree_to_file(par_node, fp);
            fclose(fp);
            free(file_name);
            /* free the created binary tree */
            free_tree(par_node);
        }
        /* file does not exist */
        else
        {
            printf("Sorry, the filename you provided was not found. Please try again.\n");
            return(-1);
        }
    }
    exit(0);
}
