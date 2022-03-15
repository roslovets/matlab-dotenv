function genDoc()
% Generate docs from mlx source
proj = currentProject();
srcDoc = fullfile(proj.RootFolder, 'main/doc/GettingStarted.mlx');
resDoc = fullfile(proj.RootFolder, 'README.md');
livescript2markdown(srcDoc, resDoc, 'AddMention', true);
