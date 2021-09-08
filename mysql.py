#!/usr/bin/env python3

import os
from urllib.parse import urlparse

uri = os.getenv('DATABASE_URL')
result = urlparse(uri)

print(f"-u {result.username} -p={result.password} -h {result.hostname} -P {result.port if result.port else 3306} {(result.path or '').replace('/', '')}", end="")
