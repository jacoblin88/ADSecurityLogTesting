# IIS 結合Windows認證

## 簡述
在內網環境下，基於IIS的asp.net網頁服務常常會結合Windows認證，結合AD以達到單一認證的目的。
但實務上此類的服務常常也是已經潛入內網攻擊者攻擊的對象，本實驗將藉由各種方法及模擬各種場景找到產生問題的
來源與程式。

## 場景敘述

### NTLM

![圖 1](../images/e971dd1031eb0376ac2ca0bbca0463473b78bcf1037feac3b6da789e7008799b.png)

- Case1:使用者使用瀏覽器登入IIS服務所產生紀錄
  - 使用者端產生事件:4648(run as 的log)
    - 可看到產生事件的exe
![圖 2](../images/7c3e4e7d4e72fc6394d44b9a92a33f585f8b858743653d920658a66005aad5b1.png)
  - IIS端產生事件: 4625(NTLM)
![圖 3](../images/706627c5700b8c56b32b49b8e4edb24c3210e328fcf02fe08d90f3e67086e462.png)  


### Kerberos
[IIS with kerberos](https://github.com/SurajDixit/KerberosConfigMgrIIS)