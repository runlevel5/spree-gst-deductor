= Gst Deductor

If you are an Australian vendor, and if you happen to get caught in situation where prices are GST inclusive and you could not rely on stock VAT calculator
due to rounded off amount OR you are selling stuff overseas in which GST needed to be deducted, then this extension is for you. It does:

+ Make sure your price is GST inclusive
+ If Shipping Country is Australia, no GST tax is deducted
+ If Shipping Country is NOT Australia, 10% of GST will be deducted and the Tax Charge will display a negative amount on Summary partial

One caveat is that I override the TaxCharge code so the tax rate can be a negative number which is not a very ideal way to do things because the Spree Core
Team tries to enforce Charge a positive value.

I did not have time to write a new Tax Credit class, this comes as quick solution. In the future, I would improve this extension to do things as Credit class instead of
Tax Charge class. For all Aussies out there, enjoy M.A.T.E!

NOTE: The Tax Rate is hard-coded within the code, it WILL NOT use the Tax Rate you set in the backend.