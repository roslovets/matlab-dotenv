function vars = read(dotEnvFilePath)
%% Read variables from .env file
arguments
    dotEnvFilePath (1,1) string {mustBeNonzeroLengthText} = ".env"
end
de = DotEnvLoader(dotEnvFilePath);
vars = de.read();
