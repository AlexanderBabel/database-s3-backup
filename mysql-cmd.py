#!/usr/bin/env python3

import os
from urllib.parse import urlparse

uri = os.getenv('DATABASE_URL')
result = urlparse(uri)

print(f"/usr/bin/mysqldump -u {result.username} -p {result.password} -d {(result.path or '').replace('/', '')} {result.hostname}:{result.port if result.port else 3306}")
