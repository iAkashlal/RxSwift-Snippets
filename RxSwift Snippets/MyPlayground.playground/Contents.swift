import RxSwift
import RxCocoa

///Observables
//let observable1 = Observable.just(1)
//let observable2 = Observable.of(1,2,3)
//let observable3 = Observable.of([1,2,3])
//let observable4 = Observable.from([1,2,3])
//let observable5 = Observable<Int>.create { (observer) -> Disposable in
//    observer.onNext(1)
//    observer.onNext(2)
//    observer.onCompleted()
//    observer.onNext(3)  //Ignored, because onNext called after onCompleted
//    return Disposables.create()
//}
//
//let subscription1 = observable1.subscribe { (event) in
//    print(event)
//}
//
//let subscription2 = observable2.subscribe { (event) in
//    if let element = event.element{
//        print(element)
//    }
//}
//
//let subscription3 = observable3.subscribe(onNext: { (element) in
//    print(element)
//})
//
//let subscription4 = observable4.subscribe(onNext: { (element) in
//    print(element)
//})
//
//let subscription5 = observable5.subscribe(onNext: { (element) in
//    print(element)
//}, onError: { (error) in
//    print(error)
//}, onCompleted: {
//    print("Completed")
//}) {
//    print("Observable disposed")
//}
//
//subscription1.dispose()
//subscription2.dispose()
//subscription3.dispose()
//
//let disposeBag = DisposeBag()
//
//subscription4.disposed(by: disposeBag)
//subscription5.disposed(by: disposeBag)


///PublishSubject
//let publishSubject = PublishSubject<Int>()
//
//publishSubject.onNext(1)
//
//publishSubject.subscribe ( onNext: { (element) in
//    print(element)
//})
//
//publishSubject.onNext(1)
//
//publishSubject.onNext(2)

///BehaviorSubject
//let behaviorSubject = BehaviorSubject(value: 0)
//behaviorSubject.onNext(1)
//behaviorSubject.subscribe (onNext: { (element) in
//print(element)
//})
//behaviorSubject.onNext(2)

///Replay Subject
//let replaySubject = ReplaySubject<String>.create(bufferSize: 2)
//replaySubject.onNext("Blah")
//replaySubject.onNext("Bleh")
//replaySubject.onNext("Bluh")
//
//replaySubject.subscribe(onNext: { (element) in
//    print(element)
//})

///Variable
//let variable = Variable([Int]())
//
//variable.value.append(1)
//
//variable.asObservable().subscribe(onNext:{
//    print($0)
//})
//
//variable.value.append(2)

///BehaviourRelay
//let relay = BehaviorRelay(value: [String]())
//relay.accept(["Bleh"])
//relay.accept(relay.value + ["Haha"])
//relay.asObservable().subscribe(onNext:{
//    print($0)
//})


