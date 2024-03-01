import 'package:challenge_learning_app/models/teacher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final _teacherReference = FirebaseFirestore.instance.collection('teachers');

  List<Teacher> __teacherListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

      return Teacher(
        name: data['name'] ?? '',
        imagePath: data['imagePath'] ?? '',
        jobDescription: data['jobDescription'] ?? '',
      );
    }).toList();
  }

  Stream<List<Teacher>> get teachers {
    return _teacherReference.snapshots().map(__teacherListFromSnapshot);
  }
}
