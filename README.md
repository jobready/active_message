# ActiveMessage

Simple abstraction over notifications/messages

## Installation

Add this line to your application's Gemfile:

    gem 'active_message'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_message

## Usage

```ruby

message = ActiveMessage::Message.new(receipient, "Message")
message.strategy = ActiveMessage::Strategies::Broadcast.new
message.send

message = ActiveMessage::TemplateMessage.new(recipient, template_id, params)
message.strategy = ActiveMessage::Strategies::Email.new
message.send
```

### Supported Backends

```ruby
ActiveMessage::Email
ActiveMessage::Notification
ActiveMessage::Template
```

### Supported Strategies

```ruby
ActiveMessage::Strategies::Broadcast
ActiveMessage::Email
```

## Contributing

1. Fork it ( http://github.com/jobready/active_message/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
