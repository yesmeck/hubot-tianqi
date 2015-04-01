# hubot-hubot-tianqi

A hubot script that report weather

See [`src/hubot-tianqi.coffee`](src/hubot-tianqi.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-hubot-tianqi --save`

Then add **hubot-hubot-tianqi** to your `external-scripts.json`:

```json
["hubot-hubot-tianqi"]
```

## Configuration

Set environment variables

```
BAIDU_AK=yourkey
```

## Sample Interaction

```
user1>> 杭州天气
hubot>> 杭州天气：
PM2.5 85
周三 04月01日 (实时：24℃) 多云 东风微风 21℃
周四 雷阵雨 西南风微风 34 ~ 19℃
周五 阵雨转阴 东风微风 26 ~ 18℃
周六 多云 西风微风 30 ~ 18℃
```
