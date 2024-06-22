FROM public.ecr.aws/docker/library/python:3.9.18-bullseye

RUN pip install --upgrade pip
ADD requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
RUN python --version && pip list

ADD finalProject finalProject
WORKDIR finalProject

ENTRYPOINT ["python", "app.py"]
