/*
    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < ROW; j++) {
        z1[i][j] = 0.0;
        for (int k = 0; k < FEAT; k++) {
          z1[i][j] += w1[i][k] * x_train[k][j];
        }
        z1[i][j] += b1[i];
        a1[i][j] = (z1[i][j] <= 0.0) ? 0.0 : z1[i][j];
      }
    }

    //
    // Z2 = W2.dot(A1) + b2
    //
    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < ROW; j++) {
        z2[i][j] = 0.0;  // initialize z2
        for (int k = 0; k < HIDDEN; k++) {
          z2[i][j] += (w2[i][k] * a1[k][j]);
        }
        z2[i][j] += b2[i];
      }
    }

    int n_correct = 0;
    for (int i = 0; i < ROW; i++) {
      precision exp_sum = 0.0;
      for (int j = 0; j < CLASSES; j++) {
        a2[j][i] = pow(euler, z2[j][i]);

        exp_sum += a2[j][i];
      }
      int prediction = 0;
      precision max = 0;
      for (int j = 0; j < CLASSES; j++) {
        a2[j][i] /= exp_sum;
        if (a2[j][i] > max) {
          prediction += 1;
          max = (a2[j][i]);
        }
      }

      if (y[i] == prediction) {
        n_correct += 1;
      }
    }

    db2 = 0.0;
    for (int i = 0; i < ROW; i++) {
      for (int j = 0; j < CLASSES; j++) {
        dz2[j][i] = a2[j][i] - one_hot_y[j][i];
        db2 += dz2[j][i];
      }
    }
    db2 /= MAX;

    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < HIDDEN; j++) {
        dw2[i][j] = 0.0;
        for (int k = 0; k < ROW; k++) {
          dw2[i][j] += (dz2[i][k] * a1[j][k]);
        }
        dw2[i][j] /= MAX;
      }
    }

    db1 = 0.0;
    // dZ1 = W2.T.dot(dZ2) * ReLU_deriv(Z1)
    //// this is incorrect
    ///
    ///
    ///
    ///
    ///
    MatrixXd m1(10, 10);
    MatrixXd mdz2(10, 60000);
    MatrixXd mxtrain(FEAT, ROW);
    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < HIDDEN; j++) {
        m1(j, i) = w2[i][j];
      }
    }
    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < ROW; j++) {
        mdz2(i, j) = dz2[i][j];
      }
    }

    for (int i = 0; i < ROW; i++) {
      for (int j = 0; j < FEAT; j++) {
        mxtrain(j, i) = x_train[j][i];
      }
    }
    auto test = m1 * mdz2;

    cout << test(0, 0) << endl;

    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < ROW; j++) {
        dz1[i][j] = 0.0;

        for (int k = 0; k < CLASSES; k++) {
          // dz1[i][j] += (w2T[i][k] * dz2[k][j]);
          dz2[i][j] += (m1(i, k) * mdz2(k, j));
        }

        dz1[i][j] *= (z1[i][j] < 0 ? 0 : 1);

        db1 += dz1[i][j];
      }
    }
    cout << dz1[0][0] << endl;
    // cout << Map<Matrix<precision, CLASSES, HIDDEN>>(dz1[0]) << endl;

    db1 /= MAX;
    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < FEAT; j++) {
        dw1[i][j] = 0.0;
        for (int k = 0; k < ROW; k++) {
          dw1[i][j] += (dz1[i][k] * x_train[j][k]);
        }
        dw1[i][j] /= MAX;
      }
    }
    auto mdw1 = test * mxtrain.transpose();
    // dw2 appears to be correct, but not dW1
    // dw1 is incorrect because dz1 is incorrect
    // dz1 is based on dz2 and w2. dz2 appears to be correct. w2 must be
    // correct.
    // cout << w2[0][9] << endl;
    for (int i = 0; i < CLASSES; i++) {
      b2[i] -= (alpha * db2);
      for (int j = 0; j < HIDDEN; j++) {
        w2[i][j] -= (alpha * dw2[i][j]);
      }
    }

    for (int i = 0; i < HIDDEN; i++) {
      b1[i] -= (alpha * db1);
      for (int j = 0; j < FEAT; j++) {
        w1[i][j] -= (alpha * dw1[i][j]);
      }
    }

    cout << "Accuracy is " << n_correct / (double)ROW << endl;
  */
