set :stage, :staging #����
#�e�T�[�o�̖������L�q
role :app, %w{user@192.168.000.000} #�A�v���P�[�V�����T�[�o
role :web, %w{user@192.168.000.000} #web�T�[�o
role :db,  %w{user@192.168.000.000} #DB�T�[�o
#�T�[�o���L�q
server '192.168.000.000', #�T�[�o��
user: 'user', #���s���[�U
roles: %w{web app db}, # �T�[�o�̖���
ssh_options: {
    keys: %w(~/.ssh/id_rsa),
    #auth_methods: %w(publickey), # �F�ؕ��@ password���\
    password: 'password' #password�w��
}
