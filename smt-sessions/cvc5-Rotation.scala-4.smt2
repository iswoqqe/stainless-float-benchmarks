; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!9 () Bool)

(assert start!9)

(declare-fun b!10 () Bool)

(declare-fun res!15 () Bool)

(declare-fun e!8 () Bool)

(assert (=> b!10 (=> res!15 e!8)))

(declare-datatypes ((tuple2!0 0))(
  ( (tuple2!1 (_1!0 (_ FloatingPoint 11 53)) (_2!0 (_ FloatingPoint 11 53))) )
))
(declare-fun vec!13 () tuple2!0)

(declare-fun error!0 (tuple2!0) tuple2!0)

(assert (=> b!10 (= res!15 (not (fp.lt (fp #b1 #b01111001101 #b0010000000111010111110011110111001110101011000010110) (fp.div roundNearestTiesToEven (_2!0 (error!0 vec!13)) (_2!0 vec!13)))))))

(declare-fun lt!10 () (_ FloatingPoint 11 53))

(assert (=> b!10 (= lt!10 (fp.div roundNearestTiesToEven (_1!0 (error!0 vec!13)) (_1!0 vec!13)))))

(declare-fun b!8 () Bool)

(declare-fun e!9 () Bool)

(assert (=> b!8 (= e!9 e!8)))

(declare-fun res!17 () Bool)

(assert (=> b!8 (=> res!17 e!8)))

(assert (=> b!8 (= res!17 (not (fp.lt (fp #b1 #b01111001101 #b0010000000111010111110011110111001110101011000010110) (fp.div roundNearestTiesToEven (_1!0 (error!0 vec!13)) (_1!0 vec!13)))))))

(declare-fun lt!11 () (_ FloatingPoint 11 53))

(assert (=> b!8 (= lt!11 (fp.div roundNearestTiesToEven (_2!0 (error!0 vec!13)) (_2!0 vec!13)))))

(declare-fun lt!12 () tuple2!0)

(assert (=> b!8 (= lt!12 (tuple2!1 (fp.div roundNearestTiesToEven (_1!0 (error!0 vec!13)) (_1!0 vec!13)) (fp.div roundNearestTiesToEven (_2!0 (error!0 vec!13)) (_2!0 vec!13))))))

(declare-fun res!16 () Bool)

(assert (=> start!9 (=> (not res!16) (not e!9))))

(assert (=> start!9 (= res!16 (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (_1!0 vec!13)) (fp.lt (_1!0 vec!13) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000)) (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (_2!0 vec!13)) (fp.lt (_2!0 vec!13) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> start!9 e!9))

(assert (=> start!9 true))

(declare-fun b!9 () Bool)

(declare-fun res!18 () Bool)

(assert (=> b!9 (=> res!18 e!8)))

(assert (=> b!9 (= res!18 (not (fp.lt (fp.div roundNearestTiesToEven (_1!0 (error!0 vec!13)) (_1!0 vec!13)) (fp #b0 #b01111001101 #b0010000000111010111110011110111001110101011000010110))))))

(declare-fun lt!14 () (_ FloatingPoint 11 53))

(assert (=> b!9 (= lt!14 (fp.div roundNearestTiesToEven (_2!0 (error!0 vec!13)) (_2!0 vec!13)))))

(declare-fun b!11 () Bool)

(assert (=> b!11 (= e!8 (not (fp.lt (fp.div roundNearestTiesToEven (_2!0 (error!0 vec!13)) (_2!0 vec!13)) (fp #b0 #b01111001101 #b0010000000111010111110011110111001110101011000010110))))))

(declare-fun lt!13 () (_ FloatingPoint 11 53))

(assert (=> b!11 (= lt!13 (fp.div roundNearestTiesToEven (_1!0 (error!0 vec!13)) (_1!0 vec!13)))))

(assert (= (and start!9 res!16) b!8))

(assert (= (and b!8 (not res!17)) b!9))

(assert (= (and b!9 (not res!18)) b!10))

(assert (= (and b!10 (not res!15)) b!11))

(declare-fun m!1 () Bool)

(assert (=> b!10 m!1))

(assert (=> b!8 m!1))

(assert (=> b!9 m!1))

(assert (=> b!11 m!1))

(push 1)

(assert (not b!8))

(assert (not b!9))

(assert (not b!10))

(assert (not b!11))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6 () Bool)

(declare-fun lt!19 () tuple2!0)

(assert (=> d!6 (and (fp.lt (fp #b1 #b01111001101 #b0010000000111010111110011110111001110101011000010110) (_1!0 lt!19)) (fp.lt (_1!0 lt!19) (fp #b0 #b01111001101 #b0010000000111010111110011110111001110101011000010110)) (fp.lt (fp #b1 #b01111001101 #b0010000000111010111110011110111001110101011000010110) (_2!0 lt!19)) (fp.lt (_2!0 lt!19) (fp #b0 #b01111001101 #b0010000000111010111110011110111001110101011000010110)))))

(declare-fun lt!20 () tuple2!0)

(declare-fun abs!0 ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))

(assert (=> d!6 (= lt!19 (tuple2!1 (abs!0 (fp.sub roundNearestTiesToEven (_1!0 lt!20) (_1!0 vec!13))) (abs!0 (fp.sub roundNearestTiesToEven (_2!0 lt!20) (_2!0 vec!13)))))))

(declare-fun rotate!0 (tuple2!0) tuple2!0)

(assert (=> d!6 (= lt!20 (rotate!0 (rotate!0 (rotate!0 (rotate!0 vec!13)))))))

(assert (=> d!6 (and (fp.lt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (_1!0 vec!13)) (fp.lt (_1!0 vec!13) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000)))))

(assert (=> d!6 (= (error!0 vec!13) lt!19)))

(declare-fun bs!5 () Bool)

(assert (= bs!5 d!6))

(declare-fun m!3 () Bool)

(assert (=> bs!5 m!3))

(declare-fun m!5 () Bool)

(assert (=> bs!5 m!5))

(declare-fun m!7 () Bool)

(assert (=> bs!5 m!7))

(assert (=> bs!5 m!3))

(declare-fun m!9 () Bool)

(assert (=> bs!5 m!9))

(declare-fun m!11 () Bool)

(assert (=> bs!5 m!11))

(declare-fun m!13 () Bool)

(assert (=> bs!5 m!13))

(assert (=> bs!5 m!9))

(assert (=> bs!5 m!7))

(assert (=> b!8 d!6))

(assert (=> b!9 d!6))

(assert (=> b!10 d!6))

(assert (=> b!11 d!6))

(push 1)

(assert (not d!6))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

