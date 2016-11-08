set :stage, :development #環境名
#各サーバの役割を記述
role :app, %w{ozawa@192.168.237.76} #アプリケーションサーバ
role :web, %w{ozawa@192.168.237.76} #webサーバ
role :db,  %w{ozawa@192.168.237.76} #DBサーバ
#サーバ情報記述
server '192.168.237.76', #サーバ名
user: 'ozawa', #実行ユーザ
roles: %w{web app db}, # サーバの役割
ssh_options: {
    keys: %w(~/.ssh/id_rsa),
    #auth_methods: %w(publickey), # 認証方法 passwordも可能
    password: 'ozawa' #password指定
}
