FROM osfooler:latest
RUN apt update -y && apt upgrade -y && apt install -y sudo net-tools tmux curl git && \
cd /tmp && \
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py && \
python get-pip.py && \
cd /opt && \
git clone https://github.com/foospidy/HoneyPy.git && \
cd HoneyPy && \
pip install -r requirements.txt
