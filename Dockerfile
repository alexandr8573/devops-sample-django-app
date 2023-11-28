FROM python:3.8.18

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --root-user-action=ignore --upgrade pip && pip install --root-user-action=ignore --no-cache-dir -r requirements.txt

RUN adduser --system --group app
USER app

COPY --chown=app:app . ./

ENTRYPOINT ["python3", "manage.py"]

CMD ["runserver 0.0.0.0:8000"]
