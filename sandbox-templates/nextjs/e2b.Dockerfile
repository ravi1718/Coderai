# Use a more stable base image
FROM node:21-bullseye

# Install curl
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy the compile script
COPY compile_page.sh /compile_page.sh
RUN chmod +x /compile_page.sh

# Set working directory
WORKDIR /home/user/nextjs-app

# Install Next.js and ShadCN UI
RUN npx --yes create-next-app@15.3.3 . --yes
RUN npx --yes shadcn@2.6.3 init --yes -b neutral --force
RUN npx --yes shadcn@2.6.3 add --all --yes

# Move app and clean up
RUN mv /home/user/nextjs-app/* /home/user/ && rm -rf /home/user/nextjs-app
