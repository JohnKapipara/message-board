
[1mFrom:[0m /home/ubuntu/workspace/message-board/app/controllers/messages_controller.rb @ line 36 MessagesController#create:

    [1;34m29[0m:   [32mdef[0m [1;34mcreate[0m
    [1;34m30[0m:     binding.pry
    [1;34m31[0m:     @message = [1;34;4mMessage[0m.new(message_params)
    [1;34m32[0m: [1;34m=begin[0m
    [1;34m33[0m:     @message.save
    [1;34m34[0m:       redirect_to root_path , [35mnotice[0m: [31m[1;31m'[0m[31mメッセージを保存しました。[1;31m'[0m[31m[0m
    [1;34m35[0m: =[32mend[0m
 => [1;34m36[0m:     [32mif[0m @message.save
    [1;34m37[0m:       redirect_to root_path , [35mnotice[0m: [31m[1;31m'[0m[31mメッセージを保存しました。[1;31m'[0m[31m[0m
    [1;34m38[0m:     [32melse[0m
    [1;34m39[0m:       [1;34m#メッセージが保存できなかったとき[0m
    [1;34m40[0m:       @messages = [1;34;4mMessage[0m.all
    [1;34m41[0m:       flash.now[[33m:alert[0m] = [31m[1;31m"[0m[31mメッセージの保存に失敗しました。[1;31m"[0m[31m[0m
    [1;34m42[0m:       render [31m[1;31m'[0m[31mindex[1;31m'[0m[31m[0m
    [1;34m43[0m:     [32mend[0m
    [1;34m44[0m:   [32mend[0m

