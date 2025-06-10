FROM lightdash/lightdash:0.1698.6

ARG RENDER_EXTERNAL_URL

ENV SITE_URL $RENDER_EXTERNAL_URL

COPY ./entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["pnpm", "-F", "backend", "start"]
