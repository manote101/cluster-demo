import tensorflow as tf
import numpy as np

# Input data (Celsius)
celsius = np.array([-40, -10, 0, 8, 15, 22, 38], dtype=float)
# Output data (Fahrenheit)
fahrenheit = np.array([-40, 14, 32, 46, 59, 72, 100], dtype=float)

# Define a two-layer neural network
model = tf.keras.Sequential([
    tf.keras.layers.Dense(units=4, input_shape=[1]),
    tf.keras.layers.Dense(units=1)
])

# Compile the model
model.compile(optimizer=tf.keras.optimizers.Adam(0.1), loss='mean_squared_error')

# Train the model
model.fit(celsius, fahrenheit, epochs=500, verbose=0)

# Test the model
celsius_test = np.array([100, 37, -20], dtype=float)
fahrenheit_pred = model.predict(celsius_test)

# Print the predictions
for c, f in zip(celsius_test, fahrenheit_pred):
    print(f"{c} degrees Celsius = {f[0]} degrees Fahrenheit")

