[ -d "./packages" ] || mkdir packages

cd packages
repo init -u git@github.com:zkcrossteam/zkcross-frontend-lerna.git -b CROS-166 -m delphinus-frontend.xml
repo sync
cd -

npm install
npx lerna bootstrap --hoist --nohoist=circomlib
