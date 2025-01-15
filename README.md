;====================================
; Docker 
;------------------------------------

1. re-install docker desktop. 
   download 'Docker.dmg' from there.
   
   https://docs.docker.com/desktop/setup/install/mac-install/

   My Mac is Intel chip.

2. start docker service. click on Docker.app

3. check if docker service is running
   > docker run hello-world

4. docker ps
   docker images

;====================================
; BusyBox => Ubuntu:minimal => alpine
;------------------------------------

1.  docker run -it --rm busybox:latest sh

    => docker run -it --rm alpine sh


vim
dig
curl


2. docker build -t alpine-messer .

3. check
   docker run -it --rm alpine-messer
   /# (bash prompt)

4. 

;====================================
