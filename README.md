# firebase_emulator_docker
A simple docker setup for firebase emulator

# Usage

1. Build docker image
```
sudo docker build -t firebase_emu .
```

2. Run docker container
```
docker run -itd --name=firebase_emu01 firebase_emu
```

3. (For docker on NAS e.g. Synology) make sure to mount testdata and expose ports

4. Initial firebase

```
firebase login --no-localhost
firebase init
```

5. Edit firebase.json by adding "host": "0.0.0.0" for each service
https://qiita.com/kyhei_0727/items/343602fa184c84d593c4

6. Start emulator
```
firebase emulators:start --import=.\firestore_testdata --export-on-exit
```