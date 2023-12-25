
class Animal
{
public:
    virtual string GetType() const
    {
        return "Animal";
    }
    virtual string GetVoice() const
    {
        return "Voice";
    }
};
class Dog : public Animal
{
public:
    string GetType() const
    {
        return "Dog";
    }
    string GetVoice() const
    {
        return "Woof";
    }
};
class Cat : public Animal
{
public:
    string GetType() const
    {
        return "Cat";
    }
    string GetVoice() const
    {
        return "Miaow";
    }
};
void Type(Animal &a)
{
    cout << a.GetType();
}
void Speak(Animal a)
{
    cout << a.GetVoice();
}
