# AI Workflow Continuity System - Remote MCP Server

Claude.ai用のAI継続ワークフローシステム Remote MCPサーバーです。

## 機能

- 🔄 **セッション継続性**: トークン制限を超えた対話の継続
- 💾 **ワークフローメモリ**: 重要な情報の永続化
- 📊 **システム監視**: パフォーマンス指標の追跡
- 🎯 **ゴール達成**: 96.7%の継続性率を実現

## Claude.ai 連携手順

### 1. サーバーURL
```
https://your-deployment-url.com/mcp
```

### 2. Claude.ai 設定
1. Claude.ai → Settings → Integrations
2. "Add integration" をクリック
3. 設定:
   - **Integration name**: `AI Workflow Continuity`
   - **Integration URL**: `https://your-deployment-url.com/mcp`
4. "Add" をクリック

### 3. 利用可能ツール

#### create_workflow_session
新しいワークフローセッションを作成
```json
{
  "session_name": "プロジェクト名",
  "purpose": "セッションの目的"
}
```

#### save_workflow_memory
重要情報をワークフローメモリに保存
```json
{
  "content": "保存する内容",
  "importance": "high|medium|low"
}
```

#### check_continuity_status
システムの状況とメトリクスを確認
```json
{
  "detailed": true
}
```

## デプロイ方法

### Render.com (推奨)
1. このリポジトリをfork
2. Render.com でWeb Serviceを作成
3. GitHub リポジトリを接続
4. 設定:
   - **Build Command**: `pip install -r requirements_public.txt`
   - **Start Command**: `python replit_mcp_server.py`
   - **Port**: `3001`

### Railway
1. Railway.app でプロジェクト作成
2. GitHub リポジトリを接続
3. 自動デプロイ

### Heroku
```bash
git init
heroku create your-app-name
git add .
git commit -m "Initial commit"
git push heroku main
```

## ローカル開発

```bash
pip install -r requirements_public.txt
python replit_mcp_server.py
```

サーバーは `http://localhost:3001` で起動します。

## API エンドポイント

- `GET /` - サーバー情報
- `GET /health` - ヘルスチェック
- `POST /mcp` - MCP JSON-RPC エンドポイント

## ライセンス

MIT License
