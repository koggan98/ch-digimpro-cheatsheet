| Symbol          | Name                        | formula                                                                                                | Description / Example                                 |
|-----------------|-----------------------------|--------------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| Homography      |
| $\tilde{X_i^c}$ | Image coordinates           | $\tilde{X_i^c} \backsim\ \tilde{H_b^c} \cdotp \tilde{p}_i^b$                                           |                                                       |
| $K_c$           | Calibration matrix, Camera matrix          | $K_c = \begin{bmatrix} f_x & 0 & c_x \\ 0 & f_y & c_y \\ 0 & 0 & 1 \end{bmatrix}$                      |                                                  
 $\tilde{x}$| homogenous transformation | $\tilde{x}= K*\begin{bmatrix} x\\y\\z \end{bmatrix}$| for direction of light rays f.e.
| $\tilde{H_b^c}$ |                             |                                                                                                        |                                                       |
| $\tilde{p}_i^b$ | Object markers              |                                                                                                        | Coordinates on the planar object                      |
| $E_b^c$         | Camera extrinsic matrix     | $E_b^c = \begin{bmatrix} R_b^c & t_{cb}^c \\ \begin{bmatrix} 0 & 0 & 0 \end{bmatrix}& 1 \end{bmatrix}$ | Relative pose between object and camera               |
| $R_b^c$         | Rotation matrix             |   $R_b^c=\begin{bmatrix}0_x & 0_y & 0_z\end{bmatrix}$                                                                                                     |                                                       |
| $t_{cb}^c$      | Translation vector          |     $t_c^b=p^c-R_b^c*p^b$                                                                                                   |                                                       |
| $H_b^c$         | Homography matrix           | $H_b^c \backsim\ K_c \cdotp \begin{bmatrix} r^c_{b,x} & r_{b,y}^c & t_{cb}^c \end{bmatrix}$            |                                                       |
| $r_{b,x}^c$     | Rotation vector x           | $r_{b,x}^c = \begin{bmatrix} 0 & -t_{cb,z}^c & t_{cb,y}^c \end{bmatrix}$                               |                                                       |
| $f_x, f_y$      | Focal length                | $f_x = f_y = f$                                                                                        | assume: focal length is the same in both directions   |
| $c_x, c_y$      | Principal point             |                                                                                                        |                                                       |
|                 | Object point to image point | $\begin{bmatrix} x_{s,i} \\ y_{s,i} \\ 1 \end{bmatrix} = H_b^c \cdotp \tilde{p}_i^b$                   |                                                       |
$E$ |Einheitsmatrix| $\begin{bmatrix} 1&0&0\\0&1&0\\0&0&1  \end{bmatrix}$
| Hough&nbsp;transform |
| $x_i, y_i$           | Image space coordinates     | $y_i = m \cdotp x_i + c \Leftrightarrow c = - m \cdotp x_i + y_i$                                    | Converted to parameter space, lines                 |
| $\theta$             | Angle of point              | $\theta$                                                                                             | angle between $x$ and line in parameter space       |
| $\rho$               | Proper Line Parametrization | $\rho = x \cos(\theta) + y \sin(\theta)$                                                             | length of line                                      |
| $\rho$               |                             | $\rho =[x,y]*n$                                                                                      |                                                     |
| $n$                  | normal vector               | $n = [\cos(\theta), \sin(\theta)]^T$                                                                 |                                                     | 
RANSAC&nbsp;probabilities
$\epsilon$ | Probability of picking an outlier | $\epsilon = \dfrac{N_{outliers}}{N_{inliers} + N_{outliers}}$| with $N$ = no of, $s$ = points, $n$ = no. of trials 
|                 | probability of picking individual inlier | $p=1-\epsilon$
|                 | probability of picking $s$ inliers in sequence | $p=(1-\epsilon)^s$
|                 | probability of not picking $s$ inliers in sequence | $p=1-(1-\epsilon)^s$
|                 | probability of not picking $s$ inliers in sequence of $n$ trials | $p=(1-(1-\epsilon)^s)^n$
|                 | probability of picking at least in one of $n$ trials $s$ inliers in sequence | $p_{success}=1-(1-(1-\epsilon)^s)^n$ | for lines 2 , for circles 3 points are needed 
|                 | expected number of trials needed | $n=\dfrac{log(1-p_{success})}{log(1-(1-\epsilon)^s)}$ | 
