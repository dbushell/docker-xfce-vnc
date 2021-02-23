FROM ghcr.io/dbushell/ubuntu

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 5901

WORKDIR /root
USER root

RUN apt update \
  && apt upgrade -y \
  && apt install -y xfce4 xfce4-terminal tigervnc-standalone-server \
    curl wget dnsutils iputils-ping net-tools \
    fonts-firacode fonts-noto-color-emoji \
  && apt clean -y

ENV DISPLAY=:1 \
  VNC_DEPTH=24 \
  VNC_RESOLUTION=3840x2160 \
  VNC_PASSWORD=password

WORKDIR ${HOME}

RUN mkdir -p $HOME/.config/

COPY scripts/ ${HOME}/
COPY config/ ${HOME}/.config/

RUN chmod +x $HOME/*.sh \
  && chown -R ${PUID}:${PGID} $HOME

USER ${USER}

ENTRYPOINT ["/home/user/vnc.sh"]
