
# Chef #

Chef 是一個強大的自動化平台，可以將基礎設施用 code 來編寫、自動化，以達成快速部署環境的目標。三個在 Chef 中的主要角色分別是 Workstation. Chef server. Chef client，其工作流程是 Workstation 將已編寫好的 cookbooks 上傳 Chef server，並讓 Chef server 對 Chef client 端進行自動化部署。

![The workflow of Chef](/image/start_chef.svg)
## Workstation ##

Workstation 為執行 Chef Development Kit (ChefDK) 的機器，主要負責以下三任務：
- 編寫並測試 cookbooks 和 receipts
- 和 Chef server 溝通
- 和 node (Chef client) 溝通

Workstation 中的元件包含
- Knife <br>
command-line tool，其為 chef-repo 和 Chef-server 溝通之介面。
- The Chef-repo　<br>
資料夾結構，存放、編寫、測試 cookbooks 的地方。
- knife.rb <br>
knife 的 configuration。

---
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
