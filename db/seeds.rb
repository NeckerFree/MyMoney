
# @user1 = User.create(  name: 'Elio',  email: 'elio.cortes3000@gmail.com',  password: '123456',  password_confirmation: '123456')
# @user2 = User.create(  name: 'Natalia',  email: 'natalia@gmail.com',  password: 'natalia',  password_confirmation: 'natalia')

@user1 = User.find(1)
@user2 = User.find(2)

@transaction1 = Transaction.create(  author_id: @user1.id,  name: 'Ball',  amount: 56)
@transaction2 = Transaction.create(  author_id: @user1.id,  name: 'Pear',  amount: 12)
@transaction3 = Transaction.create(  author_id: @user1.id,  name: 'Book Shelf',  amount: 345)

@category1= Category.create(  author_id: @user1.id,  name: 'Sport',  icon: 'app\assets\images\Sports\icons8-basketball-50.png')
@category2 = Category.create(  author_id: @user1.id,  name: 'Fruits',  icon: 'app\assets\images\Fruits\icons8-bad-pear-50.png')
@category3 = Category.create(  author_id: @user2.id,  name: 'Books',  icon: 'app\assets\images\Books\icons8-book-shelf-50.png')

@category_transaction1 = TransactionCategory.create(  category_id: @category1.id,  transaction_id: @transaction1.id)
@category_transaction2 = TransactionCategory.create(  category_id: @category1.id,  transaction_id: @transaction2.id)
@category_transaction3 = TransactionCategory.create(  category_id: @category2.id,  transaction_id: @transaction3.id)