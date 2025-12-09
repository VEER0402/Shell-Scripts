#!/bin/bash

# Delete tempo files older than 7 days
find /tmp -type f -mtime +7 -exec rm -f {} \;

echo "Old temp files cleaned!"

