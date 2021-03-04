# deploy-via-scp

A GitHub Action that send the build file to a remote server for deployment via scp.

## Inputs

### `local`

**Required** Local file path.

### `remote`

**Required** Remote file path.

### `host`

**Required** Remote server address.

### `port`

**Optional** Remote server port. Default `22`.

### `user`

**Required** Remote server user.

### `key`

**Required** Remote server private key, use `\n` to escape line breaks.

### `ensureRemote`

**Optional** Ensure the existance of the remote file path

## Example usage

```yaml
uses: horochx/deploy-via-scp@master
with:
  local: localPath # eg: dist/*
  remote: ${{ secrets.REMOTE }} # eg: /home/github-action/www
  host: ${{ secrets.HOST }} # eg: example.com
  port: ${{ secrets.PORT }} # eg: 22
  user: ${{ secrets.USER }} # eg: github-action
  key: ${{ secrets.KEY }} # eg: -----BEGIN OPENSSH PRIVATE KEY-----\nHEIiyzh5cT7hN...
```
