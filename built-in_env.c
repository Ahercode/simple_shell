#include "shell.h"

/**
 * _built-in_env - Get the value of an env variable
 *
 * @env: Env variable's name
 *
 * Return: The pointer to the value of the env varaible asked, NULL else
 */
char *_getenv(const char *env)
{
	int i, s;

	for (i = 0; built-in[i]; i++)
	{
		for (j = 0; built-in[i][s] != '='; s++)
		{
			if (built-in[i][s] != env[s])
				break;
		}
		if (built-in[i][s] == '=')
			break;
	}
	if (built-in[i] == NULL)
		return (NULL);
	for (s = 0; built-in[i][s] != '='; s++)
		;
	s++;
	return ((*(built-in + i) + s));
}
