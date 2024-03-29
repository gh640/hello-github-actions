FROM python:3-alpine

# Disable the caching function (even `off` disables the cache).
# Add the path to `poetry`.
ENV PYTHONNUMBUFFERED=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PATH="/root/.local/bin:$PATH"

# The App directory is `/app`. The directory is created automatically.
WORKDIR /app

# Install `poetry` and disable creation of virtualenv.
RUN apk add build-base && \
    wget -O - https://install.python-poetry.org | python && \
    poetry config virtualenvs.create false

# COPY pyproject.toml poetry.lock and run `poetry install`.
COPY pyproject.toml poetry.lock ./
RUN poetry install --no-interaction --no-root
