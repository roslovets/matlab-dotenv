classdef DotEnvLoader < handle
    %% Parse .env file and load variables

    properties
        DotEnvFilePath
    end

    methods

        function obj = DotEnvLoader(dotEnvFilePath)
            %% Create object
            arguments
                dotEnvFilePath (1,1) string {mustBeNonzeroLengthText} = ".env"
            end
            obj.DotEnvFilePath = dotEnvFilePath;
        end

        function vars = read(obj)
            %% Read variables from .env file
            vars = obj.readVariablesFromFile(Strict=true);
            for i = 1 : height(vars)
                setenv(vars.variable(i), vars.value(i));
            end
            if ~isempty(vars)
                varsCell = table2cell(vars)';
                vars = struct(varsCell{:});
            end
        end

        function load(obj)
            %% Load variables from .env file
            vars = obj.readVariablesFromFile();
            for i = 1 : height(vars)
                setenv(vars.variable(i), vars.value(i));
            end
        end

    end

    methods (Access=protected)

        function vars = readVariablesFromFile(obj, opts)
            %% Read variables from .env file
            arguments
                obj
                opts.Strict (1,1) logical = false
            end
            if isfile(obj.DotEnvFilePath)
                vars = readtable(obj.DotEnvFilePath, TextType="string", ReadVariableNames=false, ...
                    FileType="text", Delimiter="=", CommentStyle="#");
                vars.Properties.VariableNames = ["variable" "value"];
                for i = 1 : height(vars)
                    if ~isvarname(vars.variable(i))
                        error("DotEnvLoader:invalidVariableName", ...
                            "'%s' is not valid variable name", vars.variable(i));
                    end
                end
            else
                if opts.Strict
                    error("DotEnvLoader:noFile", ".env file is not found");
                else
                    warning("DotEnvLoader:noFile", ".env file is not found");
                end
                vars = [];
            end
        end

    end

end
