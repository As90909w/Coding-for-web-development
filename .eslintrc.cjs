module.exports = {
  env: {
    browser: true,
    es2021: true,
  },
  extends: 'eslint:recommended',
  overrides: [
    {
      env: {
        node: true,
      },
      files: ['.eslintrc.{js,cjs}'],
      parserOptions: {
        sourceType: 'script',
      },
    },
  ],
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  globals: {
    importScripts: 'readonly',
    __uv$config: 'readonly',
    UVServiceWorker: 'readonly',
    Dynamic: 'readonly',
    Ultraviolet: 'readonly',
    particlesJS: 'readonly',
    goBack: 'readonly',
    erudaToggle: 'readonly',
    goForward: 'readonly',
    reload: 'readonly',
    userKey: 'readonly',
  },
  ignorePatterns: ['/static/dy/', '/static/m/'],
}

} import from google doc
phont=A style 
} copy run cmlt/cms.org
RUN \

  echo "**** install packages ****" && \

  add-apt-repository -y ppa:mozillateam/ppa && \

  apt-get update && \

  DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y firefox jq wget && \

  chmod +x /install-de.sh && \

  /install-de.sh


RUN \

  chmod +x /installapps.sh && \

  /installapps.sh && \

  rm /installapps.sh
