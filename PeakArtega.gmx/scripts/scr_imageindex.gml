img = image_index;
image_index += argument[0];
img2 = image_index;
img = string(img);
img2 = string(img2);
img = string_char_at(img, 0);
img2 = string_char_at(img2, 0);
if(img != img2)
{
    image_index = real(img2);
}



