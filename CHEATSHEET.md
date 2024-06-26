| Symbol          | Name                        | formula                                                                                                | Description / Example                                 |
|-----------------|-----------------------------|--------------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| Homography      |
| $\tilde{X_i^c}$ | Image coordinates           | $\tilde{X_i^c} \backsim\ \tilde{H_b^c} \cdotp \tilde{p}_i^b$                                           |                                                       |
| $K_c$           | Calibration matrix          | $K_c = \begin{bmatrix} f_x & 0 & c_x \\ 0 & f_y & c_y \\ 0 & 0 & 1 \end{bmatrix}$                      |                                                       |  
| $\tilde{H_b^c}$ |                             |                                                                                                        |                                                       |
| $\tilde{p}_i^b$ | Object markers              |                                                                                                        | Coordinates on the planar object                      |
| $E_b^c$         | Camera extrinsic matrix     | $E_b^c = \begin{bmatrix} R_b^c & t_{cb}^c \\ \begin{bmatrix} 0 & 0 & 0 \end{bmatrix}& 1 \end{bmatrix}$ | Relative pose between object and camera               |
| $R_b^c$         | Rotation matrix             |                                                                                                        |                                                       |
| $t_{cb}^c$      | Translation vector          |                                                                                                        |                                                       |
| $H_b^c$         | Homography matrix           | $H_b^c \backsim\ K_c \cdotp \begin{bmatrix} r^c_{b,x} & r_{b,y}^c & t_{cb}^c \end{bmatrix}$            |                                                       |
| $r_{b,x}^c$     | Rotation vector x           | $r_{b,x}^c = \begin{bmatrix} 0 & -t_{cb,z}^c & t_{cb,y}^c \end{bmatrix}$                               |                                                       |
| $f_x, f_y$      | Focal length                | $f_x = f_y = f$                                                                                        | assume: focal length is the same in both directions   |
| $c_x, c_y$      | Principal point             |                                                                                                        |                                                       |
|                 | Object point to image point | $\begin{bmatrix} x_{s,i} \\ y_{s,i} \\ 1 \end{bmatrix} = H_b^c \cdotp \tilde{p}_i^b$                   |                                                       |
| Hough&nbsp;transform  |
|  $\rho$   | Proper Line Parametrization| $\rho =x \cos(\theta) + y \sin(\theta)$      | $\theta$: angle between $x$ and line, $\rho$: length of line |
|$\rho$ |               |$\rho =[x,y]*n$
|$n$    |normal vector  | $n = [\cos(\theta), \sin(\theta)]^T$   