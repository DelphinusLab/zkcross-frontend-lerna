[ -d "./packages" ] || mkdir packages

cd packages
repo init -u git@github.com:DelphinusLab/zkcross-frontend-lerna.git -b main -m delphinus-frontend.xml
repo sync
cd -

npm install
npx lerna bootstrap --hoist --nohoist=circomlib
