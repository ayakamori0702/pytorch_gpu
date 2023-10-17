FROM nvidia/cuda:12.2.0-runtime-ubuntu20.04

# パッケージのアップデートとPythonのインストール
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


#パッケージのインストール

COPY ./requirement.txt /tmp/requirement.txt 
RUN pip3 install --no-cache-dir -r /tmp/requirement.txt


# 作業ディレクトリを設定
WORKDIR /app
