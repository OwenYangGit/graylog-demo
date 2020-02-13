FROM ubuntu:18.04
COPY ./printLogging.sh /tools/printLogging.sh
RUN chmod +x /tools/printLogging.sh

# Run shell to print log with while loop
CMD ["sh","-c","/tools/printLogging.sh"]