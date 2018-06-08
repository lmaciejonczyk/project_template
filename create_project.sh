#! /bin/bash

new_project_name=$1

if [ -d "../${new_project_name}" ]; then
	rm -rf ../${new_project_name}
fi

mkdir ../${new_project_name}

cp -v CMakeLists.txt ../${new_project_name}/
cp -rv src ../${new_project_name}/
cp -rv test ../${new_project_name}/

touch ../${new_project_name}/src/${new_project_name}.h
touch ../${new_project_name}/src/${new_project_name}.cpp
touch ../${new_project_name}/test/test_${new_project_name}.cpp

grep -rl --null -e template_project ../${new_project_name}/ | xargs -0 sed -i "s/template_project/${new_project_name}/g"

