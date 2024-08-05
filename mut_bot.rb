require 'telegram/bot'

token = '?'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    if message.text =~ /блядь|Блядь|БЛЯДЬ|бля|Бля|блядский|блядская|
      блядское|ебать|Ебать|доебался| доебалсь|заебало|заебал|Заебал|
      уебище|пиздец|Пиздец|сука|хуй|Сука|Хуй|хуйня|хуево/
        bot.api.delete_message(chat_id: message.chat.id, message_id: message.message_id)
    end
  end
end

