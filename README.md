# pytorch_gpu
pytorchをgpuで動かすためのツール
--
推奨環境 
CUDA Version: 12.2  
## 入っているパッケージ一覧  
torch == 2.0.1  
torchaudio == 2.0.2  
torchvision == 0.15.2  
seaborn == 0.13.0  
scikit-learn == 1.3.1  

## dockerの立ち上げ方
<ローカル>

1.Githubから必要なものをclone,またはダウンロードしてくる

$ git@github.com:ayakamori0702/pytorch_gpu.git

ダウンロードする場合は、ほしいversionのtagからzipかtarをダウンロード

必要なスクリプトやデータがあれば、pytorch_gpuフォルダに追加

2.dockerfileをbuildする

$ docker build -t amori/pytorch_gpu:v0.0.0 docker

確かめるとき $ docker images

3.docker runする

$ ./run.sh
このとき、run.shの リポジトリ名:タグ名 またはイメージID が合っているか確認する. 

4.GPU動作確認
$python3 check_cuda.py
