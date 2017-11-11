
# Chef #

Chef 是一個強大的自動化平台，可以將基礎設施用 code 來編寫、自動化，以達成快速部署環境的目標。三個在 Chef 中的主要角色分別是 **Workstation**. **Chef server**. **Chef client**，其工作流程是 Workstation 將已編寫好的 cookbooks 上傳 Chef server，並讓 Chef server 對 Chef client 端進行自動化部署。

![The workflow of Chef](/image/start_chef.svg)

---
# Workstation #

Workstation 為執行 Chef Development Kit (ChefDK) 的機器，主要負責以下三任務：
- 編寫並測試 cookbooks 和 receipts
- 和 Chef server 溝通
- 和 node (Chef client) 溝通

Workstation 中的元件包含
- Knife <br>
command-line tool，其為 chef-repo 和 Chef-server 溝通之介面，除此之外， Knife 幫助使用者管理 nodes, coookbooks, roles, resourece 等各種資訊。
- The Chef-repo　<br>
資料夾結構，存放、編寫、測試 cookbooks 的地方。
- knife.rb <br>
knife 的 configuration。


## Chef-repo ##
<pre><code>
  ├── chefignore
  ├── cookbooks
  │   ├── example
  │   │   ├── attributes
  │   │   │   └── default.rb
  │   │   ├── metadata.rb
  │   │   ├── README.md
  │   │   └── recipes
  │   │       └── default.rb
  │   └── README.md
  ├── data_bags
  │   ├── example
  │   │   └── example_item.json
  │   └── README.md
  ├── environments
  │   ├── example.json
  │   └── README.md
  ├── LICENSE
  ├── README.md
  └── roles
      ├── example.json
      └── README.md
</code></pre>

以上是用`$ chef generate repo REPO_NAME`
所產生之預設的 Chef-repo 結構。

Directory  | Description
---------- | ------------------
`.chef/`     | 隱藏資料夾，存放驗證密鑰 (validation key file) 和 knife.rb.
`cookbooks/` | 存放cookbooks的地方，從supermarket下載的 cookbooks 也存放在這裡。
`data_bags/` | 存放 data bags JSON 檔 (.json)
`environments/` | 從放環境檔 (.rb)/(.json)
`roles/`     | 存放角色 (roles) 定義。 (.rb)/(.json)

> Note: Chef 強烈建議使用 version control system (e.g., git) 來管理 chef-repo。

## Knife ##
Knife 為 chef-repo 和 Chef-server 溝通之介面，常用的幾種情境如：
- Workstation 上傳 cookbooks 時。
- 查看 Chef-server 所管理的 nodes 時。
- 遠端操控 Chef-server 部署 Chef-client 時。
- 上傳/下載 cookbooks 到 supermarket 時。

Knife 的幾種常用指令：

`knife bootstrape` | 遠端部署 chef-client ，並且幫目標安裝 chef-client， bootstrape 必須指定好 IP 位址，或是 FQDN。
------------------ | -----------------
`knife client`     | 管理 client 端指令
`knife configure`  | 產生 knife.rb/client.rb 之指令
`knife cookbook`   | 讓 workstation 與 Chef-server 的 cookbook 互動
`knife cookbook site` | 從 supermarket 下載/上傳 cookbook
`knife data bag`   | 管理 Chef-server 上的 global variables (.json)
`knife delete`     | 刪除 Chef-server 上的 object
`knife deps`       | 確認 nodes, roles, 或 cookbooks 之間的關係
`knife diff`       | 比較 chef-repo 與 Chef-server 之間的差異
`knife download`   | 從 Chef-server 下載 object
`knife upload`     | 上傳 object 到 Chef-server
`knife environment` | 管理 Chef-server 環境
`knife list`       | 列出 Chef-server 的 object，可與 cookbook, environment 等互搭， e.g., `knife cookbook list`. `knife data bag list`. `knife environment list`. `knife node list`. `knife role list`
`knife node`       | 管理 node
`knife role`       | 管理 node 的角色 (role)
`knife ssh`        | 讓 Chef-server 可以使用 SSH command 去管理 nodes
`knife user`       | 管理 user 和他們的 RSA public key-pairs

### Knife plugin ###

- `knife-acl`
- `knife-azure` **important**
- `knife-ec2`
- `knife-eucalyptus`
- `knife-google`
- `knife-linode`
- `knife-lpar`
- `knife-openstack`
- `knife-push`
- `knife-rackspace`
- `knife-vcenter`
- `knife-windows.``


## Knife.rb ##
knife.rb 是 Knife 的設定檔，具以下特性：
- 每次執行時都會讀取 knife.rb 。
- 不是默認產生的。
- 默認產生的位置在 `~/.chef/knife.rb` (macOS and Linux platforms) 或 `c:\Users\<username>\.chef` (Windows)，可以用 `--config` option 修改位置。
- 如果 knife.rb 存在的話，就會改寫默認設定。

knife.rb 有可能存在多個地方，Knife 會依照以下順位讀取：
- `--config` 指定的位置
- 目前目錄下的 `.chef` 目錄, e.g., `./.chef/knife.rb`
- 前一目錄下的 `.chef` 目錄, e.g., `../.chef/knife.rb`
- `~/.chef/knife.rb` (macOS or Linux platforms) 或 `c:\Users\<username>\.chef` (Windows)

knife.rb 存放著 template 路徑設定、 Chef-server 的 URL 、 IP. proxy. SSH 等各種設定。

---

# Cookbook #

## Recipe ##

---

# Other Resource of Chef #

## Role ##

## Template ##

## Attribute ##

## Environment ##


[from IBM](https://www.ibm.com/developerworks/cn/cloud/library/1506_wangqf_chefforweb/index.html)

[deployment simple](https://gogojimmy.net/2013/06/01/Chef-Solo-Basic-with-Vagrant/)

[receip resource](http://blog.sammylin.tw/cookbook-resources/)

[vagrant](https://gogojimmy.net/2013/05/26/vagrant-tutorial/)

[markdown](http://markdown.tw/)

![](http://www.google.com)

- item 1
- item 2

## Cookbook 結構 ##


## Recipe ##

## Chef ##
- definition<BR>
fdsafdsafds

- scenarios
fdskjal;fjdskal;fjdskla;fj

- **Azure**
fsdafsdafdsa
[](http://www.google.com)
