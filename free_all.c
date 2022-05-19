#include "shell.h"

/**
* free_all - Free all the malloc variable
*
* Return: Anything, cause void function
*/
void free_all(void)
{
	free(user_input);
	free_command();
	free_env();
	free_path();
}


/**
* free_env - Free the recreate env var
*
* Return: Anything, cause void function
*/
void free_env(void)
{
	int i;

	for (i = 0; new_env[i]; i++)
		free(new_env[i]);
	free(new_env);
}

/**
* free_command - Free the array of command
*
* Return: Anything, cause void function
*/
void free_command(void)
{
	int i;

	for (i = 0; array_command[i]; i++)
	{
		free(array_command[i]);
	}
	free(array_command);
}

/**
* free_path - Free the array of command
*
* Return: Anything, cause void function

