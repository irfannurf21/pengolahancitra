input_image = imread('image.jpg');

% Convert to grayscale
if size(input_image, 3) == 3
    input_image = rgb2gray(input_image);
end

% Get the minimum and maximum pixel values in the input image
a = double(min(input_image(:)));
b = double(max(input_image(:)));

% Set the desired output range
c = 5;   % minimum output pixel value
d = 255; % maximum output pixel value

% Precompute the LUT using the contrast stretching equation
LUT = zeros(256, 1);
for x = 0:255
    LUT(x + 1) = ((x - a) / (b - a)) * (d - c) + c;
end
LUT = uint8(LUT); % Ensure the LUT values are integers in the range [0, 255]

% Apply the LUT to the input image
output_image = LUT(double(input_image) + 1);

% Display the original and stretched images
figure;
subplot(1, 2, 1), imshow(input_image), title('Original Image');
subplot(1, 2, 2), imshow(output_image), title('Contrast Stretched Image');
