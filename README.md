# matlab-dotenv

Load environment variables from .env file

## Description

Use .env files to store sensitive parameters like passwords, tokens, API keys etc. This tool allows you to automatically load all environment variables from `.env` file stored in current folder.

## Load environment variables

Use `dotenv.load` function to load environment variables from `.env` file.

### Syntax

`dotenv.load`

`dotenv.load(dotEnvFilePath)`

### Description

`dotenv.load` loads all environment variables from `.env` stored in current folder. Access loaded variables with `getenv(___)`

`dotenv.load(dotEnvFilePath)` allows you to specify absolute or relative path to the text file with env variables

### Input arguments

   -  `dotEnvFilePath` - absolute or relative path to the text file with env variables (`.env`). *Scalar string | char array* 

## Read environment variables

Use `dotenv.read` function to read environment variables from `.env` file to structure.

### Syntax

`env = dotenv.read`

`env = dotenv.read(dotEnvFilePath)`

### Description

`env = dotenv.read` reads all environment variables from `.env` stored in current folder into structure

`env = dotenv.read(dotEnvFilePath)` allows you to specify absolute or relative path to the text file with env variables

### Input arguments

   -  `dotEnvFilePath` - absolute or relative path to the text file with env variables (`.env`). *Scalar string | char array* 

### Output arguments

   -  `env` - structure with values of variables. *Scalar struct* 

## Example

In current folder create file named `.env` file with content:

```matlab:Code(Display)
var1=text_value
mypass=securely_stored_password
```

Run this command in your script to load variables from created file:

```matlab:Code(Display)
dotenv.load
```

Access variables with built-in MATLAB function:

```matlab:Code(Display)
mypass = getenv("mypass")
```

If you use Git in your project add `.env` file to `.gitignore`.

***
*Generated from GettingStarted.mlx with [Live Script to Markdown Converter](https://github.com/roslovets/Live-Script-to-Markdown-Converter)*
