; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13 () Bool)

(assert start!13)

(declare-fun res!29 () Bool)

(declare-fun e!14 () Bool)

(assert (=> start!13 (=> (not res!29) (not e!14))))

(declare-datatypes ((tuple2!2 0))(
  ( (tuple2!3 (_1!1 (_ FloatingPoint 11 53)) (_2!1 (_ FloatingPoint 11 53))) )
))
(declare-fun vec!4 () tuple2!2)

(assert (=> start!13 (= res!29 (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (_1!1 vec!4)) (fp.lt (_1!1 vec!4) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (_2!1 vec!4)) (fp.lt (_2!1 vec!4) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!13 e!14))

(assert (=> start!13 true))

(declare-fun b!20 () Bool)

(declare-fun e!15 () Bool)

(assert (=> b!20 (= e!14 e!15)))

(declare-fun res!28 () Bool)

(assert (=> b!20 (=> res!28 e!15)))

(declare-fun lt!23 () tuple2!2)

(declare-fun abs!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> b!20 (= res!28 (not (fp.lt (fp #b1 #b01111001101 #b0010000000111010111110011110111001110101011000010110) (abs!0 (fp.sub roundNearestTiesToEven (_1!1 lt!23) (_1!1 vec!4))))))))

(declare-fun rotate!0 (tuple2!2) tuple2!2)

(assert (=> b!20 (= lt!23 (rotate!0 (rotate!0 (rotate!0 (rotate!0 vec!4)))))))

(declare-fun b!21 () Bool)

(declare-fun res!27 () Bool)

(assert (=> b!21 (=> res!27 e!15)))

(assert (=> b!21 (= res!27 (not (fp.lt (abs!0 (fp.sub roundNearestTiesToEven (_1!1 lt!23) (_1!1 vec!4))) (fp #b0 #b01111001101 #b0010000000111010111110011110111001110101011000010110))))))

(declare-fun b!22 () Bool)

(declare-fun res!30 () Bool)

(assert (=> b!22 (=> res!30 e!15)))

(assert (=> b!22 (= res!30 (not (fp.lt (fp #b1 #b01111001101 #b0010000000111010111110011110111001110101011000010110) (abs!0 (fp.sub roundNearestTiesToEven (_2!1 lt!23) (_2!1 vec!4))))))))

(declare-fun b!23 () Bool)

(assert (=> b!23 (= e!15 (not (fp.lt (abs!0 (fp.sub roundNearestTiesToEven (_2!1 lt!23) (_2!1 vec!4))) (fp #b0 #b01111001101 #b0010000000111010111110011110111001110101011000010110))))))

(assert (= (and start!13 res!29) b!20))

(assert (= (and b!20 (not res!28)) b!21))

(assert (= (and b!21 (not res!27)) b!22))

(assert (= (and b!22 (not res!30)) b!23))

(declare-fun m!15 () Bool)

(assert (=> b!20 m!15))

(assert (=> b!20 m!15))

(declare-fun m!17 () Bool)

(assert (=> b!20 m!17))

(assert (=> b!20 m!17))

(declare-fun m!19 () Bool)

(assert (=> b!20 m!19))

(declare-fun m!21 () Bool)

(assert (=> b!20 m!21))

(assert (=> b!20 m!19))

(declare-fun m!23 () Bool)

(assert (=> b!20 m!23))

(assert (=> b!21 m!21))

(declare-fun m!25 () Bool)

(assert (=> b!22 m!25))

(assert (=> b!23 m!25))

(check-sat (not b!20) (not b!21) (not b!22) (not b!23))
(check-sat)
(get-model)

(declare-fun d!3 () Bool)

(assert (=> d!3 (= (abs!0 (fp.sub roundNearestTiesToEven (_1!1 lt!23) (_1!1 vec!4))) (ite (fp.lt (fp.sub roundNearestTiesToEven (_1!1 lt!23) (_1!1 vec!4)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.neg (fp.sub roundNearestTiesToEven (_1!1 lt!23) (_1!1 vec!4))) (fp.sub roundNearestTiesToEven (_1!1 lt!23) (_1!1 vec!4))))))

(assert (=> b!20 d!3))

(declare-fun d!5 () Bool)

(assert (=> d!5 (= (rotate!0 (rotate!0 (rotate!0 vec!4))) (tuple2!3 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 (rotate!0 (rotate!0 vec!4))) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)) (fp.mul roundNearestTiesToEven (_2!1 (rotate!0 (rotate!0 vec!4))) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 (rotate!0 (rotate!0 vec!4))) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.mul roundNearestTiesToEven (_2!1 (rotate!0 (rotate!0 vec!4))) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)))))))

(assert (=> b!20 d!5))

(declare-fun d!7 () Bool)

(assert (=> d!7 (= (rotate!0 (rotate!0 (rotate!0 (rotate!0 vec!4)))) (tuple2!3 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 (rotate!0 (rotate!0 (rotate!0 vec!4)))) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)) (fp.mul roundNearestTiesToEven (_2!1 (rotate!0 (rotate!0 (rotate!0 vec!4)))) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 (rotate!0 (rotate!0 (rotate!0 vec!4)))) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.mul roundNearestTiesToEven (_2!1 (rotate!0 (rotate!0 (rotate!0 vec!4)))) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)))))))

(assert (=> b!20 d!7))

(declare-fun d!9 () Bool)

(assert (=> d!9 (= (rotate!0 (rotate!0 vec!4)) (tuple2!3 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 (rotate!0 vec!4)) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)) (fp.mul roundNearestTiesToEven (_2!1 (rotate!0 vec!4)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 (rotate!0 vec!4)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.mul roundNearestTiesToEven (_2!1 (rotate!0 vec!4)) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)))))))

(assert (=> b!20 d!9))

(declare-fun d!11 () Bool)

(assert (=> d!11 (= (rotate!0 vec!4) (tuple2!3 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 vec!4) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)) (fp.mul roundNearestTiesToEven (_2!1 vec!4) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))) (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (_1!1 vec!4) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.mul roundNearestTiesToEven (_2!1 vec!4) (fp #b0 #b01111001001 #b0001101001100010011000110011000101000101110000000111)))))))

(assert (=> b!20 d!11))

(assert (=> b!21 d!3))

(declare-fun d!13 () Bool)

(assert (=> d!13 (= (abs!0 (fp.sub roundNearestTiesToEven (_2!1 lt!23) (_2!1 vec!4))) (ite (fp.lt (fp.sub roundNearestTiesToEven (_2!1 lt!23) (_2!1 vec!4)) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.neg (fp.sub roundNearestTiesToEven (_2!1 lt!23) (_2!1 vec!4))) (fp.sub roundNearestTiesToEven (_2!1 lt!23) (_2!1 vec!4))))))

(assert (=> b!22 d!13))

(assert (=> b!23 d!13))

(check-sat)
