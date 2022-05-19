#include "shell.h"

/**
* main - Run the shell loop
*
* @ac: Number of arg
* @av: Value of arg, in a 2D array
* @env: Environement variable
*
* Return: 0 (succes);
*/
int main(__attribute__((unused)) int ac, char **av, char **env)
{
	if (av[1] == NULL)
		loop_shell(env);
	else
		printf("Error syntaxe : ./simple_shell\n");
	return (0);
}

/**
* loop_shell - Run the shell until exit command
*
* @env: pointer of enviroment
*
* Return: Anything, cause void function
*/
void loop_shell(char **env)
{
	size_t number_of_bytes = 0;
	int i;

	copy_env(env);
	init_path();
	exit_var = 0;
	do {
		_prompt();
		signal(SIGINT, signal_handler);
		if ((getline(&user_input, &number_of_bytes, stdin)) == -1)
		{
			free_env();
			free_path();
			free(user_input);
			break;
		}
		if (user_input[0] == '\n' || user_input[0] == '#')
			continue;
		for (i = 0; user_input[i]; i++)
		{
			if (user_input[i] != ' ')
				break;
		}
		if (i == _strlen(user_input) - 1)
			continue;
		check_user_input();
		strtow(user_input);
		execut_command();
		} while (1);
		if (isatty(STDIN_FILENO) == 1)
			write(STDOUT_FILENO, "\n", 1);
}
