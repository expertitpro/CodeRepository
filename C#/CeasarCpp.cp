using System;

class Program
{
    /// <summary>
    /// Apply Caesar cipher with shift.
    /// </summary>
    static string Caesar(string value, int shift)
    {
	char[] buffer = value.ToCharArray();
	for (int i = 0; i < buffer.Length; i++)
	{
	    // Letter.
	    char letter = buffer[i];
	    // Add shift to all.
	    letter = (char)(letter + shift);
	    // Subtract 26 on overflow.
	    // Add 26 on underflow.
	    if (letter > 'z')
	    {
		letter = (char)(letter - 26);
	    }
	    else if (letter < 'a')
	    {
		letter = (char)(letter + 26);
	    }
	    // Store.
	    buffer[i] = letter;
	}
	return new string(buffer);
    }

    static void Main()
    {
	string a = "test";
	string b = Caesar(a, 18); // Ok
	string c = Caesar(b, -18); // Ok

	string d = Caesar(a, 1); // Ok
	string e = Caesar(d, -1); // Ok

	string f = "exxegoexsrgi";
	string g = Caesar(f, -4); // Ok

	Console.WriteLine(a);
	Console.WriteLine(b);
	Console.WriteLine(c);
	Console.WriteLine(d);
	Console.WriteLine(e);
	Console.WriteLine(f);
	Console.WriteLine(g);
    }
}