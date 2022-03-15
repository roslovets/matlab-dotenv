function load(dotEnvFilePath)
%% Load variables from .env file
arguments
    dotEnvFilePath (1,1) string {mustBeNonzeroLengthText} = ".env"
end
de = DotEnvLoader(dotEnvFilePath);
de.load();
